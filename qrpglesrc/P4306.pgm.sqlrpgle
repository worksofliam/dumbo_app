**free

ctl-opt dftactgrp(*no);

dcl-pi P4306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2619.rpgleinc'
/copy 'qrpgleref/P2800.rpgleinc'
/copy 'qrpgleref/P2833.rpgleinc'

dcl-ds T586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T586 FROM T586 LIMIT 1;

theCharVar = 'Hello from P4306';
dsply theCharVar;
P2619();
P2800();
P2833();
return;