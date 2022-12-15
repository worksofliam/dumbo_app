**free

ctl-opt dftactgrp(*no);

dcl-pi P2400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2172.rpgleinc'
/copy 'qrpgleref/P1728.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds T905 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T905 FROM T905 LIMIT 1;

theCharVar = 'Hello from P2400';
dsply theCharVar;
P2172();
P1728();
P658();
return;