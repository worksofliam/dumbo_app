**free

ctl-opt dftactgrp(*no);

dcl-pi P70;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P70';
dsply theCharVar;
callp localProc();
P67();
P18();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P70 in the procedure';
end-proc;