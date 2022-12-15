**free

ctl-opt dftactgrp(*no);

dcl-pi P3657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P1837.rpgleinc'

dcl-ds T998 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T998 FROM T998 LIMIT 1;

theCharVar = 'Hello from P3657';
dsply theCharVar;
P1542();
P986();
P1837();
return;