**free

ctl-opt dftactgrp(*no);

dcl-pi P3391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3272.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds T280 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T280 FROM T280 LIMIT 1;

theCharVar = 'Hello from P3391';
dsply theCharVar;
P3272();
P2044();
P907();
return;