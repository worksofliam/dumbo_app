**free

ctl-opt dftactgrp(*no);

dcl-pi P1552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'

dcl-ds T559 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T559 FROM T559 LIMIT 1;

theCharVar = 'Hello from P1552';
dsply theCharVar;
P272();
P865();
P1117();
return;