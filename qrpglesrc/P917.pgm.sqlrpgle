**free

ctl-opt dftactgrp(*no);

dcl-pi P917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'

dcl-ds theTable extname('T423') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T423 LIMIT 1;

theCharVar = 'Hello from P917';
dsply theCharVar;
callp localProc();
P781();
P749();
P741();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P917 in the procedure';
end-proc;