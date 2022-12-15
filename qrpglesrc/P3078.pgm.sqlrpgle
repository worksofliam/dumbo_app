**free

ctl-opt dftactgrp(*no);

dcl-pi P3078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2361.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds T725 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T725 FROM T725 LIMIT 1;

theCharVar = 'Hello from P3078';
dsply theCharVar;
P2361();
P1727();
P728();
return;