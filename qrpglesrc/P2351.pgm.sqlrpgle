**free

ctl-opt dftactgrp(*no);

dcl-pi P2351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds T918 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T918 FROM T918 LIMIT 1;

theCharVar = 'Hello from P2351';
dsply theCharVar;
P17();
P1461();
P386();
return;