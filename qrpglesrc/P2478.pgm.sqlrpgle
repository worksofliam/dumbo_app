**free

ctl-opt dftactgrp(*no);

dcl-pi P2478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'

dcl-ds T718 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T718 FROM T718 LIMIT 1;

theCharVar = 'Hello from P2478';
dsply theCharVar;
P575();
P1337();
P1254();
return;