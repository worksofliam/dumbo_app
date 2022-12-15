**free

ctl-opt dftactgrp(*no);

dcl-pi P5569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P2326.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds T735 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T735 FROM T735 LIMIT 1;

theCharVar = 'Hello from P5569';
dsply theCharVar;
P564();
P2326();
P1120();
return;