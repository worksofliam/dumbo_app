**free

ctl-opt dftactgrp(*no);

dcl-pi P2155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P1276.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'

dcl-ds T510 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T510 FROM T510 LIMIT 1;

theCharVar = 'Hello from P2155';
dsply theCharVar;
P1710();
P1276();
P2001();
return;