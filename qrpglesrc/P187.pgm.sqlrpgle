**free

ctl-opt dftactgrp(*no);

dcl-pi P187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P187';
dsply theCharVar;
callp localProc();
P85();
P21();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P187 in the procedure';
end-proc;