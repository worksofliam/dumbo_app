**free

ctl-opt dftactgrp(*no);

dcl-pi P3507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1739.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds T1099 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1099 FROM T1099 LIMIT 1;

theCharVar = 'Hello from P3507';
dsply theCharVar;
P1739();
P528();
P150();
return;