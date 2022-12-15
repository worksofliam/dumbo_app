**free

ctl-opt dftactgrp(*no);

dcl-pi P540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds theTable extname('T333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T333 LIMIT 1;

theCharVar = 'Hello from P540';
dsply theCharVar;
callp localProc();
P497();
P33();
P349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P540 in the procedure';
end-proc;