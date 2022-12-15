**free

ctl-opt dftactgrp(*no);

dcl-pi P2417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'

dcl-ds T585 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T585 FROM T585 LIMIT 1;

theCharVar = 'Hello from P2417';
dsply theCharVar;
P210();
P140();
P2100();
return;