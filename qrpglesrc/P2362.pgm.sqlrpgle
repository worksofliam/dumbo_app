**free

ctl-opt dftactgrp(*no);

dcl-pi P2362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'

dcl-ds T205 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T205 FROM T205 LIMIT 1;

theCharVar = 'Hello from P2362';
dsply theCharVar;
P1255();
P739();
P848();
return;