**free

ctl-opt dftactgrp(*no);

dcl-pi P248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds T11 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T11 FROM T11 LIMIT 1;

theCharVar = 'Hello from P248';
dsply theCharVar;
P139();
P30();
P243();
return;