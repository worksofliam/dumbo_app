**free

ctl-opt dftactgrp(*no);

dcl-pi P4284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2327.rpgleinc'
/copy 'qrpgleref/P3079.rpgleinc'
/copy 'qrpgleref/P3087.rpgleinc'

dcl-ds theTable extname('T623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T623 LIMIT 1;

theCharVar = 'Hello from P4284';
dsply theCharVar;
callp localProc();
P2327();
P3079();
P3087();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4284 in the procedure';
end-proc;