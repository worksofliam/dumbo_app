**free

ctl-opt dftactgrp(*no);

dcl-pi P475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds T1186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1186 FROM T1186 LIMIT 1;

theCharVar = 'Hello from P475';
dsply theCharVar;
P367();
P373();
P267();
return;