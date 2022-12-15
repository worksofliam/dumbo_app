**free

ctl-opt dftactgrp(*no);

dcl-pi P507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T209 LIMIT 1;

theCharVar = 'Hello from P507';
dsply theCharVar;
callp localProc();
P156();
P396();
P257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P507 in the procedure';
end-proc;