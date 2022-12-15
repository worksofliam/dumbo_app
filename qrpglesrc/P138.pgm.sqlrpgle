**free

ctl-opt dftactgrp(*no);

dcl-pi P138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P138';
dsply theCharVar;
callp localProc();
P84();
P105();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P138 in the procedure';
end-proc;