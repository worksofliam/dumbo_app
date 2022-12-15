**free

ctl-opt dftactgrp(*no);

dcl-pi P863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P863';
dsply theCharVar;
P593();
P63();
P166();
return;