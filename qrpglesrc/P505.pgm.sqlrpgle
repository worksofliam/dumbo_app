**free

ctl-opt dftactgrp(*no);

dcl-pi P505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'

dcl-ds T1627 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1627 FROM T1627 LIMIT 1;

theCharVar = 'Hello from P505';
dsply theCharVar;
P483();
P146();
P421();
return;