**free

ctl-opt dftactgrp(*no);

dcl-pi P594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'

dcl-ds T135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T135 FROM T135 LIMIT 1;

theCharVar = 'Hello from P594';
dsply theCharVar;
P196();
P486();
P522();
return;