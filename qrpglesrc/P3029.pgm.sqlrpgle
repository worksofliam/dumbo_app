**free

ctl-opt dftactgrp(*no);

dcl-pi P3029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2006.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'
/copy 'qrpgleref/P2208.rpgleinc'

dcl-ds T1011 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1011 FROM T1011 LIMIT 1;

theCharVar = 'Hello from P3029';
dsply theCharVar;
P2006();
P1869();
P2208();
return;