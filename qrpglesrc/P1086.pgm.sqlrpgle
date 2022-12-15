**free

ctl-opt dftactgrp(*no);

dcl-pi P1086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P1086';
dsply theCharVar;
P187();
P389();
P493();
return;