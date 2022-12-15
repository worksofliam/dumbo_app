**free

ctl-opt dftactgrp(*no);

dcl-pi P4407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2530.rpgleinc'
/copy 'qrpgleref/P4056.rpgleinc'
/copy 'qrpgleref/P4307.rpgleinc'

dcl-ds T831 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T831 FROM T831 LIMIT 1;

theCharVar = 'Hello from P4407';
dsply theCharVar;
P2530();
P4056();
P4307();
return;