**free

ctl-opt dftactgrp(*no);

dcl-pi P664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds T11 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T11 FROM T11 LIMIT 1;

theCharVar = 'Hello from P664';
dsply theCharVar;
P536();
P353();
P381();
return;