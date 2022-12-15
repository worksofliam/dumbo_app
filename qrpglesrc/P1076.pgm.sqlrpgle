**free

ctl-opt dftactgrp(*no);

dcl-pi P1076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds T39 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T39 FROM T39 LIMIT 1;

theCharVar = 'Hello from P1076';
dsply theCharVar;
P96();
P841();
P340();
return;