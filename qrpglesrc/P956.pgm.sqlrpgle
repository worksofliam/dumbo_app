**free

ctl-opt dftactgrp(*no);

dcl-pi P956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P768.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P956';
dsply theCharVar;
callp localProc();
P768();
P646();
P580();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P956 in the procedure';
end-proc;