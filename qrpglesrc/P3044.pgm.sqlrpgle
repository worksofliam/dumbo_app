**free

ctl-opt dftactgrp(*no);

dcl-pi P3044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P2851.rpgleinc'
/copy 'qrpgleref/P2522.rpgleinc'

dcl-ds T502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T502 FROM T502 LIMIT 1;

theCharVar = 'Hello from P3044';
dsply theCharVar;
P472();
P2851();
P2522();
return;