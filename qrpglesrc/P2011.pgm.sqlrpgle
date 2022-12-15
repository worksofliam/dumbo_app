**free

ctl-opt dftactgrp(*no);

dcl-pi P2011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'

dcl-ds T849 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T849 FROM T849 LIMIT 1;

theCharVar = 'Hello from P2011';
dsply theCharVar;
P611();
P1181();
P382();
return;