**free

ctl-opt dftactgrp(*no);

dcl-pi P1110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P1110';
dsply theCharVar;
P240();
P17();
P604();
return;