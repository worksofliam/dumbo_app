**free

ctl-opt dftactgrp(*no);

dcl-pi P613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P613';
dsply theCharVar;
callp localProc();
P609();
P554();
P452();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P613 in the procedure';
end-proc;