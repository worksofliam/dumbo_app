**free

ctl-opt dftactgrp(*no);

dcl-pi P633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T224 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T224 FROM T224 LIMIT 1;

theCharVar = 'Hello from P633';
dsply theCharVar;
P589();
P486();
P4();
return;