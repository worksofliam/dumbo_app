**free

ctl-opt dftactgrp(*no);

dcl-pi P3609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3187.rpgleinc'
/copy 'qrpgleref/P2467.rpgleinc'
/copy 'qrpgleref/P1087.rpgleinc'

dcl-ds T747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T747 FROM T747 LIMIT 1;

theCharVar = 'Hello from P3609';
dsply theCharVar;
P3187();
P2467();
P1087();
return;