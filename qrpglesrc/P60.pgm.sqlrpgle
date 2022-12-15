**free

ctl-opt dftactgrp(*no);

dcl-pi P60;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P60';
dsply theCharVar;
P50();
P49();
return;