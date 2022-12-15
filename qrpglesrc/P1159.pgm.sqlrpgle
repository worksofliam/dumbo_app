**free

ctl-opt dftactgrp(*no);

dcl-pi P1159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds T464 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T464 FROM T464 LIMIT 1;

theCharVar = 'Hello from P1159';
dsply theCharVar;
P1079();
P192();
P692();
return;