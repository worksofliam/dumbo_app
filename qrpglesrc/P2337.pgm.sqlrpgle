**free

ctl-opt dftactgrp(*no);

dcl-pi P2337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P911.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P2110.rpgleinc'

dcl-ds theTable extname('T487') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T487 LIMIT 1;

theCharVar = 'Hello from P2337';
dsply theCharVar;
callp localProc();
P911();
P1357();
P2110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2337 in the procedure';
end-proc;