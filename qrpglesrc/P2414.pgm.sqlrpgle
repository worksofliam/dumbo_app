**free

ctl-opt dftactgrp(*no);

dcl-pi P2414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P1729.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds T515 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T515 FROM T515 LIMIT 1;

theCharVar = 'Hello from P2414';
dsply theCharVar;
P136();
P1729();
P1154();
return;