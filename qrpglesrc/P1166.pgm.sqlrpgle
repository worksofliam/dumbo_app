**free

ctl-opt dftactgrp(*no);

dcl-pi P1166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'

dcl-ds T940 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T940 FROM T940 LIMIT 1;

theCharVar = 'Hello from P1166';
dsply theCharVar;
P876();
P400();
P769();
return;