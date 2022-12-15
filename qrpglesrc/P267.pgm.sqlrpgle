**free

ctl-opt dftactgrp(*no);

dcl-pi P267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P267';
dsply theCharVar;
callp localProc();
P28();
P16();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P267 in the procedure';
end-proc;