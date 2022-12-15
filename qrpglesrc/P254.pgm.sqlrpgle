**free

ctl-opt dftactgrp(*no);

dcl-pi P254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds T313 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T313 FROM T313 LIMIT 1;

theCharVar = 'Hello from P254';
dsply theCharVar;
P50();
P131();
P166();
return;