**free

ctl-opt dftactgrp(*no);

dcl-pi P533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds T1150 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1150 FROM T1150 LIMIT 1;

theCharVar = 'Hello from P533';
dsply theCharVar;
P522();
P49();
P154();
return;