**free

ctl-opt dftactgrp(*no);

dcl-pi P4301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2064.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'

dcl-ds T939 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T939 FROM T939 LIMIT 1;

theCharVar = 'Hello from P4301';
dsply theCharVar;
P2064();
P60();
P1630();
return;