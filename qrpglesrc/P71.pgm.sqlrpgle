**free

ctl-opt dftactgrp(*no);

dcl-pi P71;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P71';
dsply theCharVar;
P14();
P35();
P39();
return;