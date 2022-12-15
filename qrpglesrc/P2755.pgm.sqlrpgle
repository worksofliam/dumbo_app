**free

ctl-opt dftactgrp(*no);

dcl-pi P2755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1348.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T761 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T761 FROM T761 LIMIT 1;

theCharVar = 'Hello from P2755';
dsply theCharVar;
P1348();
P907();
P167();
return;