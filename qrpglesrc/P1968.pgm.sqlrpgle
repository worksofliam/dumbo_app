**free

ctl-opt dftactgrp(*no);

dcl-pi P1968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1806.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P1968';
dsply theCharVar;
callp localProc();
P1806();
P619();
P930();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1968 in the procedure';
end-proc;