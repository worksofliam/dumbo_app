**free

ctl-opt dftactgrp(*no);

dcl-pi P1902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P1501.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'

dcl-ds T763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T763 FROM T763 LIMIT 1;

theCharVar = 'Hello from P1902';
dsply theCharVar;
P1016();
P1501();
P331();
return;