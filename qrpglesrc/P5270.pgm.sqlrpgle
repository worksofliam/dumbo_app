**free

ctl-opt dftactgrp(*no);

dcl-pi P5270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4503.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P4254.rpgleinc'

dcl-ds T975 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T975 FROM T975 LIMIT 1;

theCharVar = 'Hello from P5270';
dsply theCharVar;
P4503();
P127();
P4254();
return;