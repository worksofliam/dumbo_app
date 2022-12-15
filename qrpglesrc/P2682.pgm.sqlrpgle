**free

ctl-opt dftactgrp(*no);

dcl-pi P2682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2306.rpgleinc'
/copy 'qrpgleref/P2216.rpgleinc'
/copy 'qrpgleref/P1234.rpgleinc'

dcl-ds T1099 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1099 FROM T1099 LIMIT 1;

theCharVar = 'Hello from P2682';
dsply theCharVar;
P2306();
P2216();
P1234();
return;