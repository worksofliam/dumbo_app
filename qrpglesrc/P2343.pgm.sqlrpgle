**free

ctl-opt dftactgrp(*no);

dcl-pi P2343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P1957.rpgleinc'

dcl-ds T317 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T317 FROM T317 LIMIT 1;

theCharVar = 'Hello from P2343';
dsply theCharVar;
P1604();
P1593();
P1957();
return;