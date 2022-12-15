**free

ctl-opt dftactgrp(*no);

dcl-pi P2282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2101.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P1999.rpgleinc'

dcl-ds T755 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T755 FROM T755 LIMIT 1;

theCharVar = 'Hello from P2282';
dsply theCharVar;
P2101();
P963();
P1999();
return;