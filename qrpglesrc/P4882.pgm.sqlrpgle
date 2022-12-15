**free

ctl-opt dftactgrp(*no);

dcl-pi P4882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P3624.rpgleinc'
/copy 'qrpgleref/P2877.rpgleinc'

dcl-ds T742 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T742 FROM T742 LIMIT 1;

theCharVar = 'Hello from P4882';
dsply theCharVar;
P429();
P3624();
P2877();
return;