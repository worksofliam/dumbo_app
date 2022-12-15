**free

ctl-opt dftactgrp(*no);

dcl-pi P5010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4897.rpgleinc'
/copy 'qrpgleref/P2279.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds T1220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1220 FROM T1220 LIMIT 1;

theCharVar = 'Hello from P5010';
dsply theCharVar;
P4897();
P2279();
P532();
return;