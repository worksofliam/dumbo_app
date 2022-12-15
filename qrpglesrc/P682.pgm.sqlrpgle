**free

ctl-opt dftactgrp(*no);

dcl-pi P682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P682';
dsply theCharVar;
callp localProc();
P121();
P115();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P682 in the procedure';
end-proc;