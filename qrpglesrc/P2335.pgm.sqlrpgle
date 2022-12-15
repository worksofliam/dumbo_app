**free

ctl-opt dftactgrp(*no);

dcl-pi P2335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2100.rpgleinc'
/copy 'qrpgleref/P1345.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P2335';
dsply theCharVar;
P2100();
P1345();
P315();
return;