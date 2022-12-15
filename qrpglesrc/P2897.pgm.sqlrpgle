**free

ctl-opt dftactgrp(*no);

dcl-pi P2897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2705.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P2279.rpgleinc'

dcl-ds T902 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T902 FROM T902 LIMIT 1;

theCharVar = 'Hello from P2897';
dsply theCharVar;
P2705();
P524();
P2279();
return;