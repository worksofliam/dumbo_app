**free

ctl-opt dftactgrp(*no);

dcl-pi P5044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1956.rpgleinc'
/copy 'qrpgleref/P4906.rpgleinc'
/copy 'qrpgleref/P2192.rpgleinc'

dcl-ds T1418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1418 FROM T1418 LIMIT 1;

theCharVar = 'Hello from P5044';
dsply theCharVar;
P1956();
P4906();
P2192();
return;