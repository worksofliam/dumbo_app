**free

ctl-opt dftactgrp(*no);

dcl-pi P120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T835 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T835 FROM T835 LIMIT 1;

theCharVar = 'Hello from P120';
dsply theCharVar;
P11();
P32();
P101();
return;